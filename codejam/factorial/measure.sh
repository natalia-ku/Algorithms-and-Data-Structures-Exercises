start_ms=$(ruby -e 'puts (Time.now.to_f * 1000).to_i')
$1
end_ms=$(ruby -e 'puts (Time.now.to_f * 1000).to_i')
elapsed_ms=$((end_ms - start_ms))
echo "$elapsed_ms ms passed"
