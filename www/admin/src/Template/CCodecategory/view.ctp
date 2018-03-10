<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\CCodecategory $cCodecategory
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit C Codecategory'), ['action' => 'edit', $cCodecategory->Id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete C Codecategory'), ['action' => 'delete', $cCodecategory->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $cCodecategory->Id)]) ?> </li>
        <li><?= $this->Html->link(__('List C Codecategory'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New C Codecategory'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="cCodecategory view large-9 medium-8 columns content">
    <h3><?= h($cCodecategory->Id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($cCodecategory->Name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Description') ?></th>
            <td><?= h($cCodecategory->Description) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedBy') ?></th>
            <td><?= h($cCodecategory->CreatedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedBy') ?></th>
            <td><?= h($cCodecategory->ModifiedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($cCodecategory->Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($cCodecategory->Status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedDate') ?></th>
            <td><?= h($cCodecategory->CreatedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedDate') ?></th>
            <td><?= h($cCodecategory->ModifiedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Version') ?></th>
            <td><?= h($cCodecategory->Version) ?></td>
        </tr>
    </table>
</div>
