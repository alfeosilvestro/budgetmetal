<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MService $mService
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List M Services'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="mServices form large-9 medium-8 columns content">
    <?= $this->Form->create($mService) ?>
    <fieldset>
        <legend><?= __('Add M Service') ?></legend>
        <?php
            echo $this->Form->control('M_Parent_Services_Id');
            echo $this->Form->control('ServiceName');
            echo $this->Form->control('C_Metal_Type');
            echo $this->Form->control('CreatedDate', ['empty' => true]);
            echo $this->Form->control('CreatedBy');
            echo $this->Form->control('ModifiedDate', ['empty' => true]);
            echo $this->Form->control('ModifiedBy');
            echo $this->Form->control('Status');
            echo $this->Form->control('Version');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
