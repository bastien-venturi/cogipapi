<?php

require 'vendor/autoload.php'; // Autoload dependencies

$whoops = new \Whoops\Run;
$whoops->pushHandler(new \Whoops\Handler\PrettyPageHandler);
$whoops->register();

require 'models/InvoicesModel.php'; //
require 'models/CompaniesModel.php'; //
require 'models/ContactsModel.php'; //

require 'controllers/InvoicesController.php'; // 
require 'controllers/CompaniesController.php'; // 
require 'controllers/ContactsController.php'; //


require 'db.php'; // Require database

use Bramus\Router\Router;

$router = new Router();

// Instantiate the InvoicesController once
$invoicesController = new InvoicesController($pdo);

// Define routes 

// Fetching all invoices
$router->get('/invoices', function() use ($invoicesController) {
    $invoicesController->getAllInvoices();
});

// Fetching a single invoice
$router->get('/invoices/(\d+)', function($id) use ($invoicesController) {
    $invoicesController->getInvoice($id);
});

// Creating an invoice
$router->post('/invoices', function() use ($invoicesController) {
    // Assuming you're getting JSON input
    $data = json_decode(file_get_contents('php://input'), true);
    $invoicesController->createInvoice($data);
});

// Updating an invoice
$router->put('/invoices/(\d+)', function($id) use ($invoicesController) {
    $data = json_decode(file_get_contents('php://input'), true);
    $invoicesController->updateInvoice($id, $data);
});

// Deleting an invoice
$router->delete('/invoices/(\d+)', function($id) use ($invoicesController) {
    $invoicesController->deleteInvoice($id);
});

//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\

// Instantiate the CompaniesController once
$companiesController = new CompaniesController($pdo);

// Define routes
$router->get('/companies', function() use ($companiesController) {
    $companiesController->getAllCompanies();
});
$router->get('/companies/(\d+)', function($id) use ($companiesController) {
    $companiesController->getCompany($id);
});
$router->post('/companies', function() use ($companiesController) {
    $data = json_decode(file_get_contents('php://input'), true);
    $companiesController->createCompany($data);
});
$router->put('/companies/(\d+)', function($id) use ($companiesController) {
    $data = json_decode(file_get_contents('php://input'), true);
    $companiesController->updateCompany($id, $data);
});
$router->delete('/companies/(\d+)', function($id) use ($companiesController) {
    $companiesController->deleteCompany($id);
});

//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\

// Instantiate the ContactsController once
$ContactsController = new ContactsController($pdo);

// Define routes
$router->get('/Contacts', function() use ($ContactsController) {
    $ContactsController->getAllContacts();
});
$router->get('/Contacts/(\d+)', function($id) use ($ContactsController) {
    $ContactsController->getContact($id);
});
$router->post('/Contacts', function() use ($ContactsController) {
    $data = json_decode(file_get_contents('php://input'), true);
    $ContactsController->createContact($data);
});
$router->put('/Contacts/(\d+)', function($id) use ($ContactsController) {
    $data = json_decode(file_get_contents('php://input'), true);
    $ContactsController->updateContact($id, $data);
});
$router->delete('/Contacts/(\d+)', function($id) use ($ContactsController) {
    $ContactsController->deleteContact($id);
});


// Run the router
$router->run();

?>