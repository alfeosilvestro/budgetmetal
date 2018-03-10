<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * MUser Model
 *
 * @method \App\Model\Entity\MUser get($primaryKey, $options = [])
 * @method \App\Model\Entity\MUser newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\MUser[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\MUser|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\MUser patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\MUser[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\MUser findOrCreate($search, callable $callback = null, $options = [])
 */
class MUserTable extends Table
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

        $this->setTable('m_user');
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
            ->scalar('EmailAddress')
            ->maxLength('EmailAddress', 55)
            ->requirePresence('EmailAddress', 'create')
            ->notEmpty('EmailAddress');

        $validator
            ->scalar('Password')
            ->maxLength('Password', 45)
            ->requirePresence('Password', 'create')
            ->notEmpty('Password');

        $validator
            ->scalar('UserName')
            ->maxLength('UserName', 45)
            ->requirePresence('UserName', 'create')
            ->notEmpty('UserName');

        $validator
            ->integer('C_UserType')
            ->requirePresence('C_UserType', 'create')
            ->notEmpty('C_UserType');

        $validator
            ->dateTime('CreatedDate')
            ->requirePresence('CreatedDate', 'create')
            ->notEmpty('CreatedDate');

        $validator
            ->scalar('CreatedBy')
            ->maxLength('CreatedBy', 45)
            ->requirePresence('CreatedBy', 'create')
            ->notEmpty('CreatedBy');

        $validator
            ->scalar('ModifiedBy')
            ->maxLength('ModifiedBy', 45)
            ->requirePresence('ModifiedBy', 'create')
            ->notEmpty('ModifiedBy');

        $validator
            ->dateTime('ModifiedDate')
            ->requirePresence('ModifiedDate', 'create')
            ->notEmpty('ModifiedDate');

        $validator
            ->integer('Status')
            ->requirePresence('Status', 'create')
            ->notEmpty('Status');

        $validator
            ->integer('RfqCount')
            ->allowEmpty('RfqCount');

        $validator
            ->scalar('QuoteCount')
            ->maxLength('QuoteCount', 45)
            ->allowEmpty('QuoteCount');

        $validator
            ->dateTime('Version')
            ->allowEmpty('Version');

        $validator
            ->scalar('Title')
            ->maxLength('Title', 500)
            ->allowEmpty('Title');

        $validator
            ->scalar('ContactNumbers')
            ->maxLength('ContactNumbers', 45)
            ->allowEmpty('ContactNumbers');

        $validator
            ->integer('M_Company_Id')
            ->requirePresence('M_Company_Id', 'create')
            ->notEmpty('M_Company_Id');

        $validator
            ->integer('Confirmed')
            ->requirePresence('Confirmed', 'create')
            ->notEmpty('Confirmed');

        $validator
            ->integer('Company_Admin')
            ->requirePresence('Company_Admin', 'create')
            ->notEmpty('Company_Admin');

        return $validator;
    }
}
