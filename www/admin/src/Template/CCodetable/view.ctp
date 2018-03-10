<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\CCodetable $cCodetable
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit C Codetable'), ['action' => 'edit', $cCodetable->Id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete C Codetable'), ['action' => 'delete', $cCodetable->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $cCodetable->Id)]) ?> </li>
        <li><?= $this->Html->link(__('List C Codetable'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New C Codetable'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="cCodetable view large-9 medium-8 columns content">
    <h3><?= h($cCodetable->Id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($cCodetable->Name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Description') ?></th>
            <td><?= h($cCodetable->Description) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedBy') ?></th>
            <td><?= h($cCodetable->CreatedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedBy') ?></th>
            <td><?= h($cCodetable->ModifiedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($cCodetable->Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($cCodetable->Status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('C CodeCategory Id') ?></th>
            <td><?= $this->Number->format($cCodetable->C_CodeCategory_Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('C ParentCode') ?></th>
            <td><?= $this->Number->format($cCodetable->C_ParentCode) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedDate') ?></th>
            <td><?= h($cCodetable->CreatedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedDate') ?></th>
            <td><?= h($cCodetable->ModifiedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Version') ?></th>
            <td><?= h($cCodetable->Version) ?></td>
        </tr>
    </table>
</div>
