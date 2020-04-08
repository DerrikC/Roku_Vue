export default {
    name: "TheUserForm",

    template: `
    <div class="container">
    <h1>Add User</h1>

    <section id="add-user-form">
        <form @submit.prevent="addUser">
            <div>
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" required placeholder="First name">
            </div>

            <div>
                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" required placeholder="Last name">
            </div>

            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required placeholder="Password">
            </div>

            <div>
                <label for="role">Role:</label>
                <input type="text" id="role" name="role" placeholder="Role">
            </div>

            <div>
                <input type="submit">
            </div>        
        </form>    
    </section>
    </div>
    `,

    methods: {
        addUser() {
            debugger;
        }
    }
}