"""
UniPero script: data/Task-II/script/run.py
Purpose: Create and submit a dpdispatcher batch of ABACUS tasks for numbered frame directories.
Inputs: machine.json, resource.json, and 0000/ to 0495/ task directories.
Outputs: Remote dpdispatcher submission and retrieved task outputs.
Run: python run.py
Dependencies: Python 3 and dpdispatcher.
Side effects: Submits remote ABACUS calculations.
This documentation describes the existing workflow; it does not alter calculation parameters.
"""

from dpdispatcher import Machine, Resources, Task, Submission

machine = Machine.load_from_json('machine.json')
resources = Resources.load_from_json('resource.json')

task_list = []

for i in range(0, 500, 5):
    dir_name = f'{i:04}/'
    task = Task(command='OMP_NUM_THREADS=16 mpirun -np 1 abacus > log', task_work_path=dir_name, forward_files=['*'], backward_files=['*'], outlog='log')
    task_list.append(task)

submission = Submission(
    work_base='./script',
    machine=machine,
    resources=resources,
    task_list=task_list,
    forward_common_files=[],
    backward_common_files=[]
)

submission.run_submission()

