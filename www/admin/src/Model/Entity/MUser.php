<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * MUser Entity
 *
 * @property int $Id
 * @property string $EmailAddress
 * @property string $Password
 * @property string $UserName
 * @property int $C_UserType
 * @property \Cake\I18n\FrozenTime $CreatedDate
 * @property string $CreatedBy
 * @property string $ModifiedBy
 * @property \Cake\I18n\FrozenTime $ModifiedDate
 * @property int $Status
 * @property int $RfqCount
 * @property string $QuoteCount
 * @property \Cake\I18n\FrozenTime $Version
 * @property string $Title
 * @property string $ContactNumbers
 * @property int $M_Company_Id
 * @property int $Confirmed
 * @property int $Company_Admin
 */
class MUser extends Entity
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
        'EmailAddress' => true,
        'Password' => true,
        'UserName' => true,
        'C_UserType' => true,
        'CreatedDate' => true,
        'CreatedBy' => true,
        'ModifiedBy' => true,
        'ModifiedDate' => true,
        'Status' => true,
        'RfqCount' => true,
        'QuoteCount' => true,
        'Version' => true,
        'Title' => true,
        'ContactNumbers' => true,
        'M_Company_Id' => true,
        'Confirmed' => true,
        'Company_Admin' => true
    ];
}
