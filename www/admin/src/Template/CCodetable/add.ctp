<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\CCodetable $cCodetable
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List C Codetable'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="cCodetable form large-9 medium-8 columns content">
    <?= $this->Form->create($cCodetable) ?>
    <fieldset>
        <legend><?= __('Add C Codetable') ?></legend>
        <?php
            echo $this->Form->control('Name');
            echo $this->Form->control('Description');
            echo $this->Form->control('CreatedDate');
            echo $this->Form->control('CreatedBy');
            echo $this->Form->control('ModifiedDate');
            echo $this->Form->control('ModifiedBy');
            echo $this->Form->control('Status');
            echo $this->Form->control('C_CodeCategory_Id');
            echo $this->Form->control('C_ParentCode');
            echo $this->Form->control('Version');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
