function find_max(nums) {
    let max_num = Number.NEGATIVE_INFINITY;
    for (let num of nums) {
        if (num > max_num) {
            max_num += 1;
        }
    }
    console.log(max_num);
    return max_num;
 }