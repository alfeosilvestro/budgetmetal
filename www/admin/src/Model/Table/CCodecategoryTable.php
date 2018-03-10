<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * CCodecategory Model
 *
 * @method \App\Model\Entity\CCodecategory get($primaryKey, $options = [])
 * @method \App\Model\Entity\CCodecategory newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\CCodecategory[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\CCodecategory|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\CCodecategory patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\CCodecategory[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\CCodecategory findOrCreate($search, callable $callback = null, $options = [])
 */
class CCodecategoryTable extends Table
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

        $this->setTable('c_codecategory');
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
            ->maxLength('Description', 200)
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
