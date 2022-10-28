export default {
    months(count) {
        const months = ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'July', 'August', 'Oktober', 'November', 'Dezember'];
        return months.splice(0, count);
    },
    randomNumbers(count, max) {
        const result = [];
        for (let i = 0; i < count; i++) {
            const randomResult = Math.floor(Math.random() * max);
            result.push(randomResult);
        }
        return result;
    }
}