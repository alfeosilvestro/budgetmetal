<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MCompany $mCompany
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List M Company'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="mCompany form large-9 medium-8 columns content">
    <?= $this->Form->create($mCompany) ?>
    <fieldset>
        <legend><?= __('Add M Company') ?></legend>
        <?php
            echo $this->Form->control('Name');
            echo $this->Form->control('Address');
            echo $this->Form->control('Domain');
            echo $this->Form->control('Reg_No');
            echo $this->Form->control('Code');
            echo $this->Form->control('About');
            echo $this->Form->control('SupplierAvgRating');
            echo $this->Form->control('BuyerAvgRating');
            echo $this->Form->control('AwardedQuotation');
            echo $this->Form->control('SubmittedQuotation');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
