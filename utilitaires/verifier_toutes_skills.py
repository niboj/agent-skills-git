#!/usr/bin/env python3
import argparse
import subprocess
import sys
from pathlib import Path


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Executer verifier_skill.py sur chaque dossier de skill contenant SKILL.md."
    )
    parser.add_argument(
        "--skills-root",
        default="skills",
        help="Repertoire racine contenant les dossiers de skills",
    )
    args = parser.parse_args()

    skills_root = Path(args.skills_root)
    if not skills_root.exists():
        raise SystemExit(f"Le repertoire racine des skills n existe pas : {skills_root}")

    skill_dirs = sorted(
        path.parent
        for path in skills_root.glob("*/SKILL.md")
        if path.parent.is_dir()
    )
    if not skill_dirs:
        raise SystemExit(f"Aucune skill trouvee sous : {skills_root}")

    cmd = [sys.executable, "utilitaires/verifier_skill.py", *[str(path) for path in skill_dirs]]
    result = subprocess.run(cmd, capture_output=True, text=True)

    if result.stdout:
        print(result.stdout.strip())
    if result.stderr:
        print(result.stderr.strip(), file=sys.stderr)

    return result.returncode


if __name__ == "__main__":
    raise SystemExit(main())
