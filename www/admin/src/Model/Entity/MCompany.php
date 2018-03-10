<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * MCompany Entity
 *
 * @property int $Id
 * @property string $Name
 * @property string $Address
 * @property string $Domain
 * @property string $Reg_No
 * @property string $Code
 * @property string $About
 * @property float $SupplierAvgRating
 * @property float $BuyerAvgRating
 * @property int $AwardedQuotation
 * @property int $SubmittedQuotation
 */
class MCompany extends Entity
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
        'Address' => true,
        'Domain' => true,
        'Reg_No' => true,
        'Code' => true,
        'About' => true,
        'SupplierAvgRating' => true,
        'BuyerAvgRating' => true,
        'AwardedQuotation' => true,
        'SubmittedQuotation' => true
    ];
}
