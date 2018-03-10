<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * CCodecategory Controller
 *
 * @property \App\Model\Table\CCodecategoryTable $CCodecategory
 *
 * @method \App\Model\Entity\CCodecategory[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class CCodecategoryController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */

    public function index()
    {
        $this->loadModel('CCodecategory');
        $cCodecategory = $this->paginate($this->CCodecategory);

        $this->set(compact('cCodecategory'));
    }

    /**
     * View method
     *
     * @param string|null $id C Codecategory id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
      $this->loadModel('CCodecategory');
        $cCodecategory = $this->CCodecategory->get($id, [
            'contain' => []
        ]);

        $this->set('cCodecategory', $cCodecategory);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
      $this->loadModel('CCodecategory');
        $cCodecategory = $this->CCodecategory->newEntity();
        if ($this->request->is('post')) {
            $cCodecategory = $this->CCodecategory->patchEntity($cCodecategory, $this->request->getData());
            if ($this->CCodecategory->save($cCodecategory)) {
                $this->Flash->success(__('The c codecategory has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The c codecategory could not be saved. Please, try again.'));
        }
        $this->set(compact('cCodecategory'));
    }

    /**
     * Edit method
     *
     * @param string|null $id C Codecategory id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
      $this->loadModel('CCodecategory');
        $cCodecategory = $this->CCodecategory->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $cCodecategory = $this->CCodecategory->patchEntity($cCodecategory, $this->request->getData());
            if ($this->CCodecategory->save($cCodecategory)) {
                $this->Flash->success(__('The c codecategory has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The c codecategory could not be saved. Please, try again.'));
        }
        $this->set(compact('cCodecategory'));
    }

    /**
     * Delete method
     *
     * @param string|null $id C Codecategory id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
      $this->loadModel('CCodecategory');
        $this->request->allowMethod(['post', 'delete']);
        $cCodecategory = $this->CCodecategory->get($id);
        if ($this->CCodecategory->delete($cCodecategory)) {
            $this->Flash->success(__('The c codecategory has been deleted.'));
        } else {
            $this->Flash->error(__('The c codecategory could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
