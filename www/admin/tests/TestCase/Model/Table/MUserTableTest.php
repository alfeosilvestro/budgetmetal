<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\MUserTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\MUserTable Test Case
 */
class MUserTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\MUserTable
     */
    public $MUser;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.m_user'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('MUser') ? [] : ['className' => MUserTable::class];
        $this->MUser = TableRegistry::get('MUser', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->MUser);

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
}
