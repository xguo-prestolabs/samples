def classify_order_event_by_proc_order_id:
  [., inputs] |
  reduce .[] as $item (
    {};
    ($item.proc_order_id|tostring) as $k |
    if has($k) then .[$k] += [$item] else .[$k] |= [$item] end
  )
;

classify_order_event_by_proc_order_id


