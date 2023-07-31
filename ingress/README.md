    <h1>Welcome to Cool Drinks Website</h1>
    <p>Thank you for choosing the Cool Drinks website project! Below is the README file containing important
        information to get started.</p>

    <h2>Prerequisites</h2>
    <p>Before activating the site, please ensure that you have Ingress set up on your Minikube cluster. If it is not
        enabled, run the following command:</p>
    <pre><code>minikube addons enable ingress</code></pre>

    <h2>Activation and Deactivation</h2>
    <p>To start the Cool Drinks website, use the <code>activate.sh</code> script:</p>
    <pre><code>./activate.sh</code></pre>

    <p>To delete all the resources associated with the website, you can run the <code>de-activate.sh</code> script:</p>
    <pre><code>./de-activate.sh</code></pre>

    <h2>DNS Configuration</h2>
    <p>For the website to function correctly, it is crucial to configure the DNS properly. Make sure to check your
        <code>/etc/hosts</code> file and ensure it contains the necessary entries. To obtain the IP address for the
        Ingress, run the following command:</p>
    <pre><code>kubectl get ingress -n ingress-nginx</code></pre>

    <p>Take note of the IP address provided by the command and add the following entry to your <code>/etc/hosts</code>
        file:</p>
    <pre><code>&lt;IP Address&gt; cooldrinks.com</code></pre>

    <p>Please replace <code>&lt;IP Address&gt;</code> with the actual IP address obtained after setting up Ingress.</p>

    <h2>Accessing the Website</h2>
    <p>Once you have activated the site, it may take a few seconds for Ingress to obtain its IP address. After that, you
        can access the Cool Drinks website using the following URLs in your web browser:</p>
    <ul>
        <li><a href="http://cooldrinks.com">cooldrinks.com</a> - Please note that this link will return a 404 error as
            there is currently no service connected to this route.</li>
        <li><a href="http://cooldrinks.com/cocacola">cooldrinks.com/cocacola</a> - Coca-Cola page</li>
        <li><a href="http://cooldrinks.com/pepsi">cooldrinks.com/pepsi</a> - Pepsi page</li>
    </ul>
