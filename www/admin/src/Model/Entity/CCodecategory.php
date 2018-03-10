<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * CCodecategory Entity
 *
 * @property int $Id
 * @property string $Name
 * @property string $Description
 * @property \Cake\I18n\FrozenTime $CreatedDate
 * @property string $CreatedBy
 * @property \Cake\I18n\FrozenTime $ModifiedDate
 * @property string $ModifiedBy
 * @property int $Status
 * @property \Cake\I18n\FrozenTime $Version
 */
class CCodecategory extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'Name' => true,
        'Description' => true,
        'CreatedDate' => true,
        'CreatedBy' => true,
        'ModifiedDate' => true,
        'ModifiedBy' => true,
        'Status' => true,
        'Version' => true
    ];
}
