<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\CCodecategoryTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\CCodecategoryTable Test Case
 */
class CCodecategoryTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\CCodecategoryTable
     */
    public $CCodecategory;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.c_codecategory'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('CCodecategory') ? [] : ['className' => CCodecategoryTable::class];
        $this->CCodecategory = TableRegistry::get('CCodecategory', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->CCodecategory);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
