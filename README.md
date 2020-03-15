# Python Pytest GitHub Action
Runs Python Unit tests using Pytest.

```bash
pytest tests
```

## Usage
```yml
- name: Python Pylin GitHub Action
  uses: RMajewski/python-unit-tests
  with:
    args: pip3 install -r requirements.txt && pytest pytest.ini src/tests
```
