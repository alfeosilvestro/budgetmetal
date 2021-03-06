<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MCompany[]|\Cake\Collection\CollectionInterface $mCompany
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New M Company'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="mCompany index large-9 medium-8 columns content">
    <h3><?= __('M Company') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('Id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Address') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Domain') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Reg_No') ?></th>
                <th scope="col"><?= $this->Paginator->sort('Code') ?></th>
                <th scope="col"><?= $this->Paginator->sort('About') ?></th>
                <th scope="col"><?= $this->Paginator->sort('SupplierAvgRating') ?></th>
                <th scope="col"><?= $this->Paginator->sort('BuyerAvgRating') ?></th>
                <th scope="col"><?= $this->Paginator->sort('AwardedQuotation') ?></th>
                <th scope="col"><?= $this->Paginator->sort('SubmittedQuotation') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($mCompany as $mCompany): ?>
            <tr>
                <td><?= $this->Number->format($mCompany->Id) ?></td>
                <td><?= h($mCompany->Name) ?></td>
                <td><?= h($mCompany->Address) ?></td>
                <td><?= h($mCompany->Domain) ?></td>
                <td><?= h($mCompany->Reg_No) ?></td>
                <td><?= h($mCompany->Code) ?></td>
                <td><?= h($mCompany->About) ?></td>
                <td><?= $this->Number->format($mCompany->SupplierAvgRating) ?></td>
                <td><?= $this->Number->format($mCompany->BuyerAvgRating) ?></td>
                <td><?= $this->Number->format($mCompany->AwardedQuotation) ?></td>
                <td><?= $this->Number->format($mCompany->SubmittedQuotation) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $mCompany->Id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $mCompany->Id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $mCompany->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $mCompany->Id)]) ?>
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
