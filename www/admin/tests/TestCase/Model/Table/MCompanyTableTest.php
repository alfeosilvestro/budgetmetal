<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\MCompanyTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\MCompanyTable Test Case
 */
class MCompanyTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\MCompanyTable
     */
    public $MCompany;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.m_company'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('MCompany') ? [] : ['className' => MCompanyTable::class];
        $this->MCompany = TableRegistry::get('MCompany', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->MCompany);

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
