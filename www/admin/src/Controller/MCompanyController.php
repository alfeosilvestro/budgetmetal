<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * MCompany Controller
 *
 * @property \App\Model\Table\MCompanyTable $MCompany
 *
 * @method \App\Model\Entity\MCompany[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class MCompanyController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
      $this->loadModel('MCompany');
        $mCompany = $this->paginate($this->MCompany);

        $this->set(compact('mCompany'));
    }

    /**
     * View method
     *
     * @param string|null $id M Company id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
      $this->loadModel('MCompany');
        $mCompany = $this->MCompany->get($id, [
            'contain' => []
        ]);

        $this->set('mCompany', $mCompany);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $this->loadModel('MCompany');
        $mCompany = $this->MCompany->newEntity();
        if ($this->request->is('post')) {
            $mCompany = $this->MCompany->patchEntity($mCompany, $this->request->getData());
            if ($this->MCompany->save($mCompany)) {
                $this->Flash->success(__('The m company has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The m company could not be saved. Please, try again.'));
        }
        $this->set(compact('mCompany'));
    }

    /**
     * Edit method
     *
     * @param string|null $id M Company id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
      $this->loadModel('MCompany');
        $mCompany = $this->MCompany->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $mCompany = $this->MCompany->patchEntity($mCompany, $this->request->getData());
            if ($this->MCompany->save($mCompany)) {
                $this->Flash->success(__('The m company has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The m company could not be saved. Please, try again.'));
        }
        $this->set(compact('mCompany'));
    }

    /**
     * Delete method
     *
     * @param string|null $id M Company id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
      $this->loadModel('MCompany');
        $this->request->allowMethod(['post', 'delete']);
        $mCompany = $this->MCompany->get($id);
        if ($this->MCompany->delete($mCompany)) {
            $this->Flash->success(__('The m company has been deleted.'));
        } else {
            $this->Flash->error(__('The m company could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
