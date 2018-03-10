<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MUser $mUser
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List M User'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="mUser form large-9 medium-8 columns content">
    <?= $this->Form->create($mUser) ?>
    <fieldset>
        <legend><?= __('Add M User') ?></legend>
        <?php
            echo $this->Form->control('EmailAddress');
            echo $this->Form->control('Password');
            echo $this->Form->control('UserName');
            echo $this->Form->control('C_UserType');
            echo $this->Form->control('CreatedDate');
            echo $this->Form->control('CreatedBy');
            echo $this->Form->control('ModifiedBy');
            echo $this->Form->control('ModifiedDate');
            echo $this->Form->control('Status');
            echo $this->Form->control('RfqCount');
            echo $this->Form->control('QuoteCount');
            echo $this->Form->control('Version');
            echo $this->Form->control('Title');
            echo $this->Form->control('ContactNumbers');
            echo $this->Form->control('M_Company_Id');
            echo $this->Form->control('Confirmed');
            echo $this->Form->control('Company_Admin');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
