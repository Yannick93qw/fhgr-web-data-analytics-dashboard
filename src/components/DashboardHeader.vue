<template>
    <div class="header-container">
        <img class="header-image" src="../assets/dashboard-header-logo.svg" alt="">
        <h2 class="header-text">Strategic Dashboard</h2>
        <h3 class="header-date">01.01.2021-31.12.2022</h3>
    </div>
</template>

<style>
.header-date {
    color: var(--color-primary);
}

.header-container {
    padding: 1rem;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    box-shadow: -5px -5px 20px var(--card-shadow-start-color), 5px 5px 20px var(--card-shadow-stop-color);
    margin-bottom: 1rem;
}

.header-image {
    width: 7rem;
}

.header-text {
    text-align: center;
}
</style>

<script>

export default {
}

</script>