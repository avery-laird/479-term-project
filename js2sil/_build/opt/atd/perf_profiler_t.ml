(* Auto-generated from "perf_profiler.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type perf_profiler_item = {
  function_name: string;
  count_trace_id: int;
  sum_inclusive_cpu_time: float;
  avg_inclusive_cpu_time_ms: float;
  sum_exclusive_cpu_time: float;
  avg_exclusive_cpu_time_ms: float;
  p90_inclusive_cpu_time_ms: float;
  p90_exclusive_cpu_time_ms: float;
  p50_inclusive_cpu_time_ms: float;
  p50_exclusive_cpu_time_ms: float;
  p25_inclusive_cpu_time_ms: float;
  p25_exclusive_cpu_time_ms: float
}

type perf_profiler = perf_profiler_item list
