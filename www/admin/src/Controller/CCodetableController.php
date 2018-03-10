<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * CCodetable Controller
 *
 * @property \App\Model\Table\CCodetableTable $CCodetable
 *
 * @method \App\Model\Entity\CCodetable[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class CCodetableController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index()
    {
      $this->loadModel('CCodetable');
        $cCodetable = $this->paginate($this->CCodetable);

        $this->set(compact('cCodetable'));
    }

    /**
     * View method
     *
     * @param string|null $id C Codetable id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
      $this->loadModel('CCodetable');
        $cCodetable = $this->CCodetable->get($id, [
            'contain' => []
        ]);

        $this->set('cCodetable', $cCodetable);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
      $this->loadModel('CCodetable');
        $cCodetable = $this->CCodetable->newEntity();
        if ($this->request->is('post')) {
            $cCodetable = $this->CCodetable->patchEntity($cCodetable, $this->request->getData());
            if ($this->CCodetable->save($cCodetable)) {
                $this->Flash->success(__('The c codetable has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The c codetable could not be saved. Please, try again.'));
        }
        $this->set(compact('cCodetable'));
    }

    /**
     * Edit method
     *
     * @param string|null $id C Codetable id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
      $this->loadModel('CCodetable');
        $cCodetable = $this->CCodetable->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $cCodetable = $this->CCodetable->patchEntity($cCodetable, $this->request->getData());
            if ($this->CCodetable->save($cCodetable)) {
                $this->Flash->success(__('The c codetable has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The c codetable could not be saved. Please, try again.'));
        }
        $this->set(compact('cCodetable'));
    }

    /**
     * Delete method
     *
     * @param string|null $id C Codetable id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
      $this->loadModel('CCodetable');
        $this->request->allowMethod(['post', 'delete']);
        $cCodetable = $this->CCodetable->get($id);
        if ($this->CCodetable->delete($cCodetable)) {
            $this->Flash->success(__('The c codetable has been deleted.'));
        } else {
            $this->Flash->error(__('The c codetable could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
