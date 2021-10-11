[., inputs] | group_by(.proc_order_id) |
map({value: ., key: .[0].proc_order_id}) | from_entries
