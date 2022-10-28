<template>
    <div class="header-container">
        <img class="header-image" src="../assets/dashboard-header-logo.svg" alt="">
        <h1 class="header-text">Udemy Dashboard</h1>
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
    background: linear-gradient(158.17deg,
            #f3f5fa -1.94%,
            #ebedf2 102.24%);
    box-shadow: 0.2rem 0.4rem 1rem #a5bac766,
        -0.1rem -0.1rem 0.2rem #ffffffb3;
    margin-bottom: 1rem;
}

.header-image {
    width: 5rem;
}

.header-text {
    text-align: center;
}
</style>

<script>

export default {
}

</script>