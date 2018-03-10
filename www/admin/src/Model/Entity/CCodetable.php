<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * CCodetable Entity
 *
 * @property int $Id
 * @property string $Name
 * @property string $Description
 * @property \Cake\I18n\FrozenTime $CreatedDate
 * @property string $CreatedBy
 * @property \Cake\I18n\FrozenTime $ModifiedDate
 * @property string $ModifiedBy
 * @property int $Status
 * @property int $C_CodeCategory_Id
 * @property int $C_ParentCode
 * @property \Cake\I18n\FrozenTime $Version
 */
class CCodetable extends Entity
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
        'C_CodeCategory_Id' => true,
        'C_ParentCode' => true,
        'Version' => true
    ];
}
