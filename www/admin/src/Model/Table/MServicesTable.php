<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * MServices Model
 *
 * @method \App\Model\Entity\MService get($primaryKey, $options = [])
 * @method \App\Model\Entity\MService newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\MService[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\MService|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\MService patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\MService[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\MService findOrCreate($search, callable $callback = null, $options = [])
 */
class MServicesTable extends Table
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

        $this->setTable('m_services');
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
            ->integer('M_Parent_Services_Id')
            ->allowEmpty('M_Parent_Services_Id');

        $validator
            ->scalar('ServiceName')
            ->maxLength('ServiceName', 500)
            ->allowEmpty('ServiceName');

        $validator
            ->integer('C_Metal_Type')
            ->allowEmpty('C_Metal_Type');

        $validator
            ->dateTime('CreatedDate')
            ->allowEmpty('CreatedDate');

        $validator
            ->scalar('CreatedBy')
            ->maxLength('CreatedBy', 45)
            ->allowEmpty('CreatedBy');

        $validator
            ->dateTime('ModifiedDate')
            ->allowEmpty('ModifiedDate');

        $validator
            ->scalar('ModifiedBy')
            ->maxLength('ModifiedBy', 45)
            ->allowEmpty('ModifiedBy');

        $validator
            ->integer('Status')
            ->allowEmpty('Status');

        $validator
            ->dateTime('Version')
            ->allowEmpty('Version');

        $validator
            ->allowEmpty('CommonShapeImage');

        return $validator;
    }
}
