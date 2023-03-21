// madLib 

function madLib(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`; 
}

// isSubstring

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

// fizzBuzz

function fizzBuzz(array) {
    let numsArr = []; 

    array.forEach(ele => {
        if ((ele % 3 === 0) ^ (ele % 5 === 0)) {
            numsArr.push(ele)
        }
    });

    return numsArr;
}

// isPrime

function isPrime(n) {
    if (n < 2) {return false;} 

    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }

    return true;
}