<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MService $mService
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit M Service'), ['action' => 'edit', $mService->Id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete M Service'), ['action' => 'delete', $mService->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $mService->Id)]) ?> </li>
        <li><?= $this->Html->link(__('List M Services'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New M Service'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="mServices view large-9 medium-8 columns content">
    <h3><?= h($mService->Id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('ServiceName') ?></th>
            <td><?= h($mService->ServiceName) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedBy') ?></th>
            <td><?= h($mService->CreatedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedBy') ?></th>
            <td><?= h($mService->ModifiedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($mService->Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('M Parent Services Id') ?></th>
            <td><?= $this->Number->format($mService->M_Parent_Services_Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('C Metal Type') ?></th>
            <td><?= $this->Number->format($mService->C_Metal_Type) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($mService->Status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedDate') ?></th>
            <td><?= h($mService->CreatedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedDate') ?></th>
            <td><?= h($mService->ModifiedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Version') ?></th>
            <td><?= h($mService->Version) ?></td>
        </tr>
    </table>
</div>
