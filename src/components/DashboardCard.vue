<template>
    <div class="card">
        <h2>Title</h2>

        <div class="sub-title-row">
            <h3>Subtitle</h3>
            <span class="q-icon-arrow-up" style="font-size: 1.5rem"></span>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet eius adipisci accusantium expedita deserunt, at
            temporibus repudiandae blanditiis quo, vel quisquam soluta reiciendis! Labore dignissimos ea quas molestias
            saepe molestiae?</p>
    </div>
</template>

<style>
.card {
    border: 1px solid #eff1f6;
    ;
    max-width: 450px;
    height: auto;
    box-sizing: border-box;
    background: linear-gradient(158.17deg,
            #f3f5fa -1.94%,
            #ebedf2 102.24%);
    border-radius: 1.2rem;
    ;
    box-shadow: 0.2rem 0.4rem 1rem #a5bac766,
        -0.1rem -0.1rem 0.2rem #ffffffb3;
    padding: 1.6rem 2.4rem;
    margin: 0.4rem;
}

h2 {
    color: var(--color-primary-black);
    text-transform: uppercase;
}

h3,
span {
    color: var(--color-primary-black);
}

.sub-title-row {
    display: flex;
    flex-direction: row;
    justify-content: start;
    align-items: center;
}
</style>

<script>
export default {

}

</script>