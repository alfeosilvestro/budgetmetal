<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * MService Entity
 *
 * @property int $Id
 * @property int $M_Parent_Services_Id
 * @property string $ServiceName
 * @property int $C_Metal_Type
 * @property \Cake\I18n\FrozenTime $CreatedDate
 * @property string $CreatedBy
 * @property \Cake\I18n\FrozenTime $ModifiedDate
 * @property string $ModifiedBy
 * @property int $Status
 * @property \Cake\I18n\FrozenTime $Version
 * @property string|resource $CommonShapeImage
 */
class MService extends Entity
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
        'M_Parent_Services_Id' => true,
        'ServiceName' => true,
        'C_Metal_Type' => true,
        'CreatedDate' => true,
        'CreatedBy' => true,
        'ModifiedDate' => true,
        'ModifiedBy' => true,
        'Status' => true,
        'Version' => true,
        'CommonShapeImage' => true
    ];
}
