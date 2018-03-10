<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * MServices Controller
 *
 * @property \App\Model\Table\MServicesTable $MServices
 *
 * @method \App\Model\Entity\MService[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class MServicesController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
      $this->loadModel('MServices');
        $mServices = $this->paginate($this->MServices);

        $this->set(compact('mServices'));
    }

    /**
     * View method
     *
     * @param string|null $id M Service id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
      $this->loadModel('MServices');
        $mService = $this->MServices->get($id, [
            'contain' => []
        ]);

        $this->set('mService', $mService);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
      $this->loadModel('MServices');
        $mService = $this->MServices->newEntity();
        if ($this->request->is('post')) {
            $mService = $this->MServices->patchEntity($mService, $this->request->getData());
            if ($this->MServices->save($mService)) {
                $this->Flash->success(__('The m service has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The m service could not be saved. Please, try again.'));
        }
        $this->set(compact('mService'));
    }

    /**
     * Edit method
     *
     * @param string|null $id M Service id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
      $this->loadModel('MServices');
        $mService = $this->MServices->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $mService = $this->MServices->patchEntity($mService, $this->request->getData());
            if ($this->MServices->save($mService)) {
                $this->Flash->success(__('The m service has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The m service could not be saved. Please, try again.'));
        }
        $this->set(compact('mService'));
    }

    /**
     * Delete method
     *
     * @param string|null $id M Service id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
      $this->loadModel('MServices');
        $this->request->allowMethod(['post', 'delete']);
        $mService = $this->MServices->get($id);
        if ($this->MServices->delete($mService)) {
            $this->Flash->success(__('The m service has been deleted.'));
        } else {
            $this->Flash->error(__('The m service could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
