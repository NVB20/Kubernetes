<h1>Kubernetes Workload Controllers: CronJob, DaemonSet, and StatefulSet</h1>
<div>
    <p>This document provides an overview and explanation of three essential workload controllers in Kubernetes: CronJob, DaemonSet, and StatefulSet. Each controller is designed to manage specific types of workloads and ensure their proper functioning within a Kubernetes cluster.</p>
</div>
<div>
    <h2>1. CronJob</h2>
    <p>A CronJob is a Kubernetes controller that creates Jobs on a specified schedule, similar to the Unix cron utility. It allows you to run tasks, batch jobs, or scripts at regular intervals or specific times. A typical use case is periodic backup, data synchronization, or cleanup tasks.</p>
    <h3>How It Works</h3>
    <ul>
        <li>A CronJob object is defined with a schedule in the form of a cron expression (e.g., * * * * *, representing every minute).</li>
        <li>When the schedule is due, the CronJob creates a Job object, which executes the defined task or command.</li>
        <li>The Job runs the task in a new Pod, ensuring successful completion.</li>
        <li>CronJobs can specify the number of successful completions required or set a limit on concurrent executions.</li>
    </ul>
</div>
<div>
    <h2>2. DaemonSet</h2>
    <p>A DaemonSet ensures that a copy of a specific Pod runs on all or some selected nodes in the Kubernetes cluster. It is useful for deploying system-level daemons, logging agents, or network proxies on every node.</p>
    <h3>How It Works</h3>
    <ul>
        <li>A DaemonSet is defined with a Pod template that describes the desired state of each Pod.</li>
        <li>When a new node is added to the cluster, the DaemonSet controller automatically schedules a new Pod on that node.</li>
        <li>If a node is removed, the corresponding Pod is terminated and rescheduled on other available nodes.</li>
    </ul>
</div>
<div>
    <h2>3. StatefulSet</h2>
    <p>A StatefulSet is a controller used for managing stateful applications like databases, caches, or other services requiring stable network identities and ordered deployment/termination.</p>
    <h3>How It Works</h3>
    <ul>
        <li>StatefulSets maintain a unique, ordered index for each Pod they manage, resulting in stable network identities.</li>
        <li>Pods are created and terminated in order, and each Pod receives a unique hostname and persistent storage.</li>
        <li>When scaling up or down, the StatefulSet ensures data preservation and proper termination order.</li>
    </ul>
 </div>   
