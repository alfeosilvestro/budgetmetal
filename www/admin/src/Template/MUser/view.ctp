<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MUser $mUser
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit M User'), ['action' => 'edit', $mUser->Id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete M User'), ['action' => 'delete', $mUser->Id], ['confirm' => __('Are you sure you want to delete # {0}?', $mUser->Id)]) ?> </li>
        <li><?= $this->Html->link(__('List M User'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New M User'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="mUser view large-9 medium-8 columns content">
    <h3><?= h($mUser->Id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('EmailAddress') ?></th>
            <td><?= h($mUser->EmailAddress) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Password') ?></th>
            <td><?= h($mUser->Password) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('UserName') ?></th>
            <td><?= h($mUser->UserName) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedBy') ?></th>
            <td><?= h($mUser->CreatedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedBy') ?></th>
            <td><?= h($mUser->ModifiedBy) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('QuoteCount') ?></th>
            <td><?= h($mUser->QuoteCount) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Title') ?></th>
            <td><?= h($mUser->Title) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ContactNumbers') ?></th>
            <td><?= h($mUser->ContactNumbers) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($mUser->Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('C UserType') ?></th>
            <td><?= $this->Number->format($mUser->C_UserType) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Status') ?></th>
            <td><?= $this->Number->format($mUser->Status) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('RfqCount') ?></th>
            <td><?= $this->Number->format($mUser->RfqCount) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('M Company Id') ?></th>
            <td><?= $this->Number->format($mUser->M_Company_Id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Confirmed') ?></th>
            <td><?= $this->Number->format($mUser->Confirmed) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Company Admin') ?></th>
            <td><?= $this->Number->format($mUser->Company_Admin) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('CreatedDate') ?></th>
            <td><?= h($mUser->CreatedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('ModifiedDate') ?></th>
            <td><?= h($mUser->ModifiedDate) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Version') ?></th>
            <td><?= h($mUser->Version) ?></td>
        </tr>
    </table>
</div>
