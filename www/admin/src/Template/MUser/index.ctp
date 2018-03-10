<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MUser[]|\Cake\Collection\CollectionInterface $mUser
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New M User'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="mUser index large-9 medium-8 columns content">
    <h3><?= __('M User') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('EmailAddress') ?></th>
                <th scope="col"><?= $this->Paginator->sort('UserName') ?></th>
                <th scope="col"><?= $this->Paginator->sort('C_UserType') ?></th>
                <th scope="col"><?= $this->Paginator->sort('CreatedDate') ?></th>
                <th scope="col"><?= $this->Paginator->sort('CreatedBy') ?></th>
                <th scope="col"><?= $this->Paginator->sort('ModifiedBy') ?></th>
                <th scope="col"><?= $this->Paginator->sort('ModifiedDate') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Status') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Title') ?></th>
                <th scope="col"><?= $this->Paginator->sort('ContactNumbers') ?></th>
                <th scope="col"><?= $this->Paginator->sort('M_Company_Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Confirmed') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Company_Admin') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($mUser as $mUser): ?>
            <tr>
                <td><?= $this->Number->format($mUser->Id) ?></td>
                <td><?= h($mUser->EmailAddress) ?></td>
                <td><?= h($mUser->UserName) ?></td>
                <td><?= $this->Number->format($mUser->C_UserType) ?></td>
                <td><?= h($mUser->CreatedDate) ?></td>
                <td><?= h($mUser->CreatedBy) ?></td>
                <td><?= h($mUser->ModifiedBy) ?></td>
                <td><?= h($mUser->ModifiedDate) ?></td>
                <td><?= $this->Number->format($mUser->Status) ?></td>
                <td><?= h($mUser->Title) ?></td>
                <td><?= h($mUser->ContactNumbers) ?></td>
                <td><?= $this->Number->format($mUser->M_Company_Id) ?></td>
                <td><?= $this->Number->format($mUser->Confirmed) ?></td>
                <td><?= $this->Number->format($mUser->Company_Admin) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $mUser->Id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $mUser->Id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $mUser->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $mUser->Id)]) ?>
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
