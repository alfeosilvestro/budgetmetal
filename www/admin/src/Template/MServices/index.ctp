<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MService[]|\Cake\Collection\CollectionInterface $mServices
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New M Service'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="mServices index large-9 medium-8 columns content">
    <h3><?= __('M Services') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('M_Parent_Services_Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('ServiceName') ?></th>
                <th scope="col"><?= $this->Paginator->sort('C_Metal_Type') ?></th>
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
            <?php foreach ($mServices as $mService): ?>
            <tr>
                <td><?= $this->Number->format($mService->Id) ?></td>
                <td><?= $this->Number->format($mService->M_Parent_Services_Id) ?></td>
                <td><?= h($mService->ServiceName) ?></td>
                <td><?= $this->Number->format($mService->C_Metal_Type) ?></td>
                <td><?= h($mService->CreatedDate) ?></td>
                <td><?= h($mService->CreatedBy) ?></td>
                <td><?= h($mService->ModifiedDate) ?></td>
                <td><?= h($mService->ModifiedBy) ?></td>
                <td><?= $this->Number->format($mService->Status) ?></td>
                <td><?= h($mService->Version) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $mService->Id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $mService->Id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $mService->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $mService->Id)]) ?>
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
