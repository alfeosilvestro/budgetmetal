<?php
namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * CCodetableFixture
 *
 */
class CCodetableFixture extends TestFixture
{

    /**
     * Table name
     *
     * @var string
     */
    public $table = 'c_codetable';

    /**
     * Fields
     *
     * @var array
     */
    // @codingStandardsIgnoreStart
    public $fields = [
        'Id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'Name' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'Description' => ['type' => 'string', 'length' => 45, 'null' => true, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'CreatedDate' => ['type' => 'datetime', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'CreatedBy' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'ModifiedDate' => ['type' => 'datetime', 'length' => null, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null],
        'ModifiedBy' => ['type' => 'string', 'length' => 45, 'null' => false, 'default' => null, 'collate' => 'latin1_swedish_ci', 'comment' => '', 'precision' => null, 'fixed' => null],
        'Status' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'C_CodeCategory_Id' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'C_ParentCode' => ['type' => 'integer', 'length' => 11, 'unsigned' => false, 'null' => false, 'default' => null, 'comment' => '', 'precision' => null, 'autoIncrement' => null],
        'Version' => ['type' => 'timestamp', 'length' => null, 'null' => true, 'default' => null, 'comment' => '', 'precision' => null],
        '_indexes' => [
            'fk_C_CodeTable_C_CodeCategory_idx' => ['type' => 'index', 'columns' => ['C_CodeCategory_Id'], 'length' => []],
            'fk_C_CodeTable_C_CodeTable1_idx' => ['type' => 'index', 'columns' => ['C_ParentCode'], 'length' => []],
        ],
        '_constraints' => [
            'primary' => ['type' => 'primary', 'columns' => ['Id'], 'length' => []],
            'Id_UNIQUE' => ['type' => 'unique', 'columns' => ['Id'], 'length' => []],
            'fk_C_CodeTable_C_CodeCategory' => ['type' => 'foreign', 'columns' => ['C_CodeCategory_Id'], 'references' => ['c_codecategory', 'Id'], 'update' => 'noAction', 'delete' => 'noAction', 'length' => []],
            'fk_C_CodeTable_C_CodeTable1' => ['type' => 'foreign', 'columns' => ['C_ParentCode'], 'references' => ['c_codetable', 'Id'], 'update' => 'noAction', 'delete' => 'noAction', 'length' => []],
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
            'Name' => 'Lorem ipsum dolor sit amet',
            'Description' => 'Lorem ipsum dolor sit amet',
            'CreatedDate' => '2018-01-28 12:53:29',
            'CreatedBy' => 'Lorem ipsum dolor sit amet',
            'ModifiedDate' => '2018-01-28 12:53:29',
            'ModifiedBy' => 'Lorem ipsum dolor sit amet',
            'Status' => 1,
            'C_CodeCategory_Id' => 1,
            'C_ParentCode' => 1,
            'Version' => 1517144009
        ],
    ];
}
