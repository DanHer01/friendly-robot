function likes(names) {
  if (names.length == 0) {
    console.log("no one likes this");
  } else if (names.length == 1) {
    console.log(names[0] + " likes this");  
  } else if (names.length == 2) {
    console.log(names[0] + " and " + names[1] + " like this");
  } else if (names.length == 3) {
    console.log(names[0] + ", " + names[1] + " and " + names[2] + " like this");
  } else {
    console.log(names[0] + ", " + names[1] + " and " + (names.length - 2) + " others like this");
  }
}

likes(["Peter"])
likes(["Jacob", "Alex"])
likes(["Max", "John", "Mark"])
likes(["Alex", "Jacob", "Mark", "Max"])