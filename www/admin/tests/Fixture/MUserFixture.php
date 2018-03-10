<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * MUserFixture
 *
 */
class MUserFixture extends TestFixture
{

    /**
     * Table name
     *
     * @var string
     */
    public $table = 'm_user';

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'Id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'autoIncrement' => true, 'precision' => null],
        'EmailAddress' => ['type' => 'string', 'length' => 55, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'Password' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'UserName' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'C_UserType' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'CreatedDate' => ['type' => 'datetime', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'CreatedBy' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'ModifiedBy' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'ModifiedDate' => ['type' => 'datetime', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'Status' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => 'Unverified
Active
Disabled', 'precision' => null, 'autoIncrement' => null],
        'RfqCount' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => true, 'default' => '0', 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'QuoteCount' => ['type' => 'string', 'length' => 45, 'null' => true, 'default' => '0', 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'Version' => ['type' => 'timestamp', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        'Title' => ['type' => 'string', 'length' => 500, 'null' => true, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'ContactNumbers' => ['type' => 'string', 'length' => 45, 'null' => true, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'M_Company_Id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'Confirmed' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => '0', 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'Company_Admin' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => '0', 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        '_indexes' => [
            'fk_M_User_C_CodeTable1_idx' => ['type' => 'index', 'columns' => ['C_UserType'], 'length' => []],
            'fk_M_User_M_Company1_idx' => ['type' => 'index', 'columns' => ['M_Company_Id'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['Id'], 'length' => []],
            'fk_M_User_C_CodeTable1' => ['type' => 'foreign', 'columns' => ['C_UserType'], 'references' => ['c_codetable', 'Id'], 'update' => 'noAction', 'delete' => 'noAction', 'length' => []],
            'fk_M_User_M_Company1' => ['type' => 'foreign', 'columns' => ['M_Company_Id'], 'references' => ['m_company', 'Id'], 'update' => 'noAction', 'delete' => 'noAction', 'length' => []],
        ],
        '_options' => [
            'engine' => 'InnoDB',
            'collation' => 'latin1_swedish_ci'
        ],
    ];
    // @codingStandardsIgnoreEnd

    /**
     * Records
     *
     * @var array
     */
    public $records = [
        [
            'Id' => 1,
            'EmailAddress' => 'Lorem ipsum dolor sit amet',
            'Password' => 'Lorem ipsum dolor sit amet',
            'UserName' => 'Lorem ipsum dolor sit amet',
            'C_UserType' => 1,
            'CreatedDate' => '2018-01-28 12:55:47',
            'CreatedBy' => 'Lorem ipsum dolor sit amet',
            'ModifiedBy' => 'Lorem ipsum dolor sit amet',
            'ModifiedDate' => '2018-01-28 12:55:47',
            'Status' => 1,
            'RfqCount' => 1,
            'QuoteCount' => 'Lorem ipsum dolor sit amet',
            'Version' => 1517144147,
            'Title' => 'Lorem ipsum dolor sit amet',
            'ContactNumbers' => 'Lorem ipsum dolor sit amet',
            'M_Company_Id' => 1,
            'Confirmed' => 1,
            'Company_Admin' => 1
        ],
    ];
}
