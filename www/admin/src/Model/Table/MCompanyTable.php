<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * MCompany Model
 *
 * @method \App\Model\Entity\MCompany get($primaryKey, $options = [])
 * @method \App\Model\Entity\MCompany newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\MCompany[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\MCompany|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\MCompany patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\MCompany[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\MCompany findOrCreate($search, callable $callback = null, $options = [])
 */
class MCompanyTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->setTable('m_company');
        $this->setDisplayField('Id');
        $this->setPrimaryKey('Id');
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('Id')
            ->allowEmpty('Id', 'create');

        $validator
            ->scalar('Name')
            ->maxLength('Name', 45)
            ->allowEmpty('Name');

        $validator
            ->scalar('Address')
            ->maxLength('Address', 45)
            ->allowEmpty('Address');

        $validator
            ->scalar('Domain')
            ->maxLength('Domain', 45)
            ->allowEmpty('Domain');

        $validator
            ->scalar('Reg_No')
            ->maxLength('Reg_No', 45)
            ->allowEmpty('Reg_No');

        $validator
            ->scalar('Code')
            ->maxLength('Code', 45)
            ->allowEmpty('Code');

        $validator
            ->scalar('About')
            ->maxLength('About', 1000)
            ->allowEmpty('About');

        $validator
            ->decimal('SupplierAvgRating')
            ->allowEmpty('SupplierAvgRating');

        $validator
            ->decimal('BuyerAvgRating')
            ->allowEmpty('BuyerAvgRating');

        $validator
            ->integer('AwardedQuotation')
            ->allowEmpty('AwardedQuotation');

        $validator
            ->integer('SubmittedQuotation')
            ->allowEmpty('SubmittedQuotation');

        return $validator;
    }
}
