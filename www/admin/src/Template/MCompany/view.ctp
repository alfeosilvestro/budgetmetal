<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MCompany $mCompany
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit M Company'), ['action' => 'edit', $mCompany->Id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete M Company'), ['action' => 'delete', $mCompany->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $mCompany->Id)]) ?> </li>
        <li><?= $this->Html->link(__('List M Company'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New M Company'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="mCompany view large-9 medium-8 columns content">
    <h3><?= h($mCompany->Id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($mCompany->Name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Address') ?></th>
            <td><?= h($mCompany->Address) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Domain') ?></th>
            <td><?= h($mCompany->Domain) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Reg No') ?></th>
            <td><?= h($mCompany->Reg_No) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Code') ?></th>
            <td><?= h($mCompany->Code) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('About') ?></th>
            <td><?= h($mCompany->About) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($mCompany->Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('SupplierAvgRating') ?></th>
            <td><?= $this->Number->format($mCompany->SupplierAvgRating) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('BuyerAvgRating') ?></th>
            <td><?= $this->Number->format($mCompany->BuyerAvgRating) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('AwardedQuotation') ?></th>
            <td><?= $this->Number->format($mCompany->AwardedQuotation) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('SubmittedQuotation') ?></th>
            <td><?= $this->Number->format($mCompany->SubmittedQuotation) ?></td>
        </tr>
    </table>
</div>
