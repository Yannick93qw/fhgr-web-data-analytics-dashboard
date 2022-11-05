<template>
    <div class="header-container">
        <img class="header-image" src="../assets/dashboard-header-logo.svg" alt="">
        <div>
            <h2 class="header-text">Strategic Dashboard</h2>
            <h3 class="header-date">Datumsbereich: 01.01.2022-31.12.2022</h3>
        </div>
        <span class="q-icon-account user-icon"></span>
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

.user-icon {
    font-size: 3rem;
    color: var(--color-primary);
}

.header-text {
    text-align: center;
}
</style>

<script>

export default {
}

</script>