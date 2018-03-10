<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\CCodecategory $cCodecategory
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $cCodecategory->Id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $cCodecategory->Id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List C Codecategory'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="cCodecategory form large-9 medium-8 columns content">
    <?= $this->Form->create($cCodecategory) ?>
    <fieldset>
        <legend><?= __('Edit C Codecategory') ?></legend>
        <?php
            echo $this->Form->control('Name');
            echo $this->Form->control('Description');
            echo $this->Form->control('CreatedDate');
            echo $this->Form->control('CreatedBy');
            echo $this->Form->control('ModifiedDate');
            echo $this->Form->control('ModifiedBy');
            echo $this->Form->control('Status');
            echo $this->Form->control('Version');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
