<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * CCodetable Model
 *
 * @method \App\Model\Entity\CCodetable get($primaryKey, $options = [])
 * @method \App\Model\Entity\CCodetable newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\CCodetable[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\CCodetable|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\CCodetable patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\CCodetable[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\CCodetable findOrCreate($search, callable $callback = null, $options = [])
 */
class CCodetableTable extends Table
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

        $this->setTable('c_codetable');
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
            ->allowEmpty('Id', 'create')
            ->add('Id', 'unique', ['rule' => 'validateUnique', 'provider' => 'table']);

        $validator
            ->scalar('Name')
            ->maxLength('Name', 45)
            ->requirePresence('Name', 'create')
            ->notEmpty('Name');

        $validator
            ->scalar('Description')
            ->maxLength('Description', 45)
            ->allowEmpty('Description');

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
            ->dateTime('ModifiedDate')
            ->requirePresence('ModifiedDate', 'create')
            ->notEmpty('ModifiedDate');

        $validator
            ->scalar('ModifiedBy')
            ->maxLength('ModifiedBy', 45)
            ->requirePresence('ModifiedBy', 'create')
            ->notEmpty('ModifiedBy');

        $validator
            ->integer('Status')
            ->requirePresence('Status', 'create')
            ->notEmpty('Status');

        $validator
            ->integer('C_CodeCategory_Id')
            ->requirePresence('C_CodeCategory_Id', 'create')
            ->notEmpty('C_CodeCategory_Id');

        $validator
            ->integer('C_ParentCode')
            ->requirePresence('C_ParentCode', 'create')
            ->notEmpty('C_ParentCode');

        $validator
            ->dateTime('Version')
            ->allowEmpty('Version');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->isUnique(['Id']));

        return $rules;
    }
}
