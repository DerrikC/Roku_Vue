export default {
    template: `
    <section>
        <h1>Add a User With This Fancy Form!</h1>
        
        <router-link :to="{ name: 'add_user' }">Click here to access the fancy form. </router-link>
        </br><sub>Just to make it annoying</sub>
    </section>
    `,

    created: function () {
        console.log('up and runnin, yo!');
    }
}

