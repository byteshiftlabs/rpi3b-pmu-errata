# rpi3b-pmu-errata

Reproducing and quantifying Arm Cortex-A53 erratum 855827 (the PMU's
`INST_RETIRED` event over-counting) bare metal on a Raspberry Pi 3B+ — no
Linux, no RTOS, just a minimal boot stub and direct PMU register access,
so the instruction count executed is fully known in advance and can be
checked against the hardware counter's reported value.

Background, the erratum text, and the theory worked through before writing
any code (PMU registers, exception levels, the EL2->EL1 boot handoff) live
in [byteshiftlabs/pr_project_notes](https://github.com/byteshiftlabs/pr_project_notes),
under `rpi-pmu-errata/`:

- [Project plan](https://github.com/byteshiftlabs/pr_project_notes/blob/main/rpi-pmu-errata/rpi3b-pmu-errata-plan.md)
- [Theory notes](https://github.com/byteshiftlabs/pr_project_notes/blob/main/rpi-pmu-errata/rpi3b-pmu-theory.pdf) (PDF)

## Status

Early stage: repo scaffolding only. No boot stub, linker script, or test
code written yet.

## License

GPL-2.0, see [LICENSE](LICENSE).
