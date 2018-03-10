<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\CCodecategory[]|\Cake\Collection\CollectionInterface $cCodecategory
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New C Codecategory'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="cCodecategory index large-9 medium-8 columns content">
    <h3><?= __('C Codecategory') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Description') ?></th>
                <th scope="col"><?= $this->Paginator->sort('CreatedDate') ?></th>
                <th scope="col"><?= $this->Paginator->sort('CreatedBy') ?></th>
                <th scope="col"><?= $this->Paginator->sort('ModifiedDate') ?></th>
                <th scope="col"><?= $this->Paginator->sort('ModifiedBy') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Status') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Version') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($cCodecategory as $cCodecategory): ?>
            <tr>
                <td><?= $this->Number->format($cCodecategory->Id) ?></td>
                <td><?= h($cCodecategory->Name) ?></td>
                <td><?= h($cCodecategory->Description) ?></td>
                <td><?= h($cCodecategory->CreatedDate) ?></td>
                <td><?= h($cCodecategory->CreatedBy) ?></td>
                <td><?= h($cCodecategory->ModifiedDate) ?></td>
                <td><?= h($cCodecategory->ModifiedBy) ?></td>
                <td><?= $this->Number->format($cCodecategory->Status) ?></td>
                <td><?= h($cCodecategory->Version) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $cCodecategory->Id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $cCodecategory->Id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $cCodecategory->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $cCodecategory->Id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
