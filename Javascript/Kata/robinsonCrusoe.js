function crusoe(n, d, ang, dist, angul) {
    let rad = ang * Math.PI / 180.0;
    let x = 0, y = 0;
      
    for ( let i = 1; i <= n; i++ ) {
        x += d * Math.cos(rad);
        y += d * Math.sin(rad);
        d *= dist;
        rad *= angul;
    }
    console.log([x, y]);
    return [x, y];
  }
// Tests
crusoe(4, 1, 15, 1, 2);