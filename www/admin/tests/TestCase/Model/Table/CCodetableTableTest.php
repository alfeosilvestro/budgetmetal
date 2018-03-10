<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\CCodetableTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\CCodetableTable Test Case
 */
class CCodetableTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\CCodetableTable
     */
    public $CCodetable;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.c_codetable'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('CCodetable') ? [] : ['className' => CCodetableTable::class];
        $this->CCodetable = TableRegistry::get('CCodetable', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->CCodetable);

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
