<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\CCodetable[]|\Cake\Collection\CollectionInterface $cCodetable
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New C Codetable'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="cCodetable index large-9 medium-8 columns content">
    <h3><?= __('C Codetable') ?></h3>
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
                <th scope="col"><?= $this->Paginator->sort('C_CodeCategory_Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('C_ParentCode') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Version') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($cCodetable as $cCodetable): ?>
            <tr>
                <td><?= $this->Number->format($cCodetable->Id) ?></td>
                <td><?= h($cCodetable->Name) ?></td>
                <td><?= h($cCodetable->Description) ?></td>
                <td><?= h($cCodetable->CreatedDate) ?></td>
                <td><?= h($cCodetable->CreatedBy) ?></td>
                <td><?= h($cCodetable->ModifiedDate) ?></td>
                <td><?= h($cCodetable->ModifiedBy) ?></td>
                <td><?= $this->Number->format($cCodetable->Status) ?></td>
                <td><?= $this->Number->format($cCodetable->C_CodeCategory_Id) ?></td>
                <td><?= $this->Number->format($cCodetable->C_ParentCode) ?></td>
                <td><?= h($cCodetable->Version) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $cCodetable->Id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $cCodetable->Id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $cCodetable->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $cCodetable->Id)]) ?>
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
