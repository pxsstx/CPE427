# VLAN Config

- Account VLAN10
- Sale VLAN20
- Engineer VLAN30
- HR VLAN40
- Executive VLAN50

## SW-FL-1

- PORT FA0/1-5 VLAN10
- PORT FA0/6-9 VLAN40
- PORT FA0/10 VLAN50

## SW-FL-2

- PORT FA0/1 VLAN10
- PORT FA0/2-3 VLAN20
- PORT FA0/4-6 VLAN30
- PORT FA0/7-8 VLAN40
- PORT FA0/9-10 VLAN50

## SW-FL-3

- PORT FA0/1-3 VLAN10
- PORT FA0/4-6 VLAN30
- PORT FA0/7-9 VLAN40
- PORT FA0/10 VLAN50

## SW-FL-4

- PORT FA0/1-2 VLAN10
- PORT FA0/3-4 VLAN20
- PORT FA0/5-6 VLAN30
- PORT FA0/7-8 VLAN40
- PORT FA0/9-10 VLAN50

## SW-FL-5

- PORT FA0/1-5 VLAN10
- PORT FA0/6-7 VLAN20
- PORT FA0/8-9 VLAN30
- PORT FA0/10 VLAN50

---

| Switch  | VLAN/Type | Count | IP Range |
| ------- | --------- | ----- | -------- |
| SW-FL-1 | ACC       | 5     | .10-.50  |
|         | HR        | 4     | .10-.40  |
|         | EXE       | 1     | .10      |

---

| Switch  | VLAN/Type | Count | IP Range |
| ------- | --------- | ----- | -------- |
| SW-FL-2 | ACC       | 1     | .60      |
|         | SA        | 2     | .10-.20  |
|         | EN        | 3     | .10-.30  |
|         | HR        | 2     | .50-.60  |
|         | EXE       | 2     | .20-.30  |

---

| Switch  | VLAN/Type | Count | IP Range |
| ------- | --------- | ----- | -------- |
| SW-FL-3 | ACC       | 3     | .70-.90  |
|         | EN        | 3     | .40-.60  |
|         | HR        | 3     | .70-.90  |
|         | EXE       | 1     | .40      |

---

| Switch  | VLAN/Type | Count | IP Range  |
| ------- | --------- | ----- | --------- |
| SW-FL-4 | ACC       | 2     | .100-.110 |
|         | SA        | 2     | .30-.40   |
|         | EN        | 2     | .70-.80   |
|         | HR        | 2     | .100-.110 |
|         | EXE       | 2     | .50-.60   |

---

| Switch  | VLAN/Type | Count | IP Range  |
| ------- | --------- | ----- | --------- |
| SW-FL-5 | ACC       | 5     | .120-.160 |
|         | SA        | 2     | .50-.60   |
|         | EN        | 2     | .90-.100  |
|         | EXE       | 1     | .70       |
