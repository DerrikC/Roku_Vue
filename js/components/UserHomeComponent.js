export default {
    props: ['currentuser'],

    template: `
    <div class="container">
        <pre>{{ currentuser }}</pre>
        <h1>Hello,  {{ currentuser.uname }} </h1>
    </div>
    `
}