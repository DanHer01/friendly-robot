function formula(n) {
    const f = x => x ? x*f(x-1n) : 1n;
    const binomial = n => [...Array(n+1).keys()].map((k) => {
    const nok = BigInt(f(BigInt(n))/(f(BigInt(n)-BigInt(k))*f(BigInt(k))));
    const a = n-k ? n-k === 1 ? 'a' : `a^${n-k}` : '';
    const b = k ? k === 1 ? 'b' : `b^${k}` : '';
    return `${nok === 1n ? '' : nok}${a}${b}`;
  }).join('+');
  
  return !n ? '1' : n > 0 ? binomial(n) : `1/(${binomial(-n)})`;
}

console.log(formula(5));