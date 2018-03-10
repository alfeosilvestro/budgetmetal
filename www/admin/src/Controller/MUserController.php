<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * MUser Controller
 *
 * @property \App\Model\Table\MUserTable $MUser
 *
 * @method \App\Model\Entity\MUser[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class MUserController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
        $this->loadModel('MUser');
        $mUser = $this->paginate($this->MUser);

        $this->set(compact('mUser'));
    }

    /**
     * View method
     *
     * @param string|null $id M User id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
      $this->loadModel('MUser');
        $mUser = $this->MUser->get($id, [
            'contain' => []
        ]);

        $this->set('mUser', $mUser);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
      $this->loadModel('MUser');
        $mUser = $this->MUser->newEntity();
        if ($this->request->is('post')) {
            $mUser = $this->MUser->patchEntity($mUser, $this->request->getData());
            if ($this->MUser->save($mUser)) {
                $this->Flash->success(__('The m user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The m user could not be saved. Please, try again.'));
        }
        $this->set(compact('mUser'));
    }

    /**
     * Edit method
     *
     * @param string|null $id M User id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
      $this->loadModel('MUser');
        $mUser = $this->MUser->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $mUser = $this->MUser->patchEntity($mUser, $this->request->getData());
            if ($this->MUser->save($mUser)) {
                $this->Flash->success(__('The m user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The m user could not be saved. Please, try again.'));
        }
        $this->set(compact('mUser'));
    }

    /**
     * Delete method
     *
     * @param string|null $id M User id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
      $this->loadModel('MUser');
        $this->request->allowMethod(['post', 'delete']);
        $mUser = $this->MUser->get($id);
        if ($this->MUser->delete($mUser)) {
            $this->Flash->success(__('The m user has been deleted.'));
        } else {
            $this->Flash->error(__('The m user could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
